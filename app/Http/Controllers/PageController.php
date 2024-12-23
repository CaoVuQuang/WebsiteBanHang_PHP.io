<?php

namespace App\Http\Controllers;

use App\Http\Controllers\PageController;
use Illuminate\Http\Request;
use App\Models\Slide;
use App\Models\Product;
use App\Models\ProductType;
use App\Models\Cart;
use App\Models\Customer;
use App\Models\Bill;
use App\Models\BillDetail;
use App\Models\User;
use Hash;
use Session;
use Auth;


class PageController extends Controller
{
    public function getIndex(){
        $slide = Slide::all();
        $new_product = Product::where('new',1)->paginate(8);
        $sanpham_khuyenmai = Product::where('promotion_price','<>',0)->paginate(4);
        // return view('page.trangchu', ['slide'=>$slide, 'new_product']);
        return view('page.trangchu', compact('slide', 'new_product', 'sanpham_khuyenmai'));
    }

    public function getLoaiSP($type){
        $sp_theoloai = Product::where('id_type',$type)->paginate(9);
        $loai = ProductType::all();
        $loai_sp = ProductType::where('id',$type)->first();
        return view('page.loai_sanpham', compact('sp_theoloai', 'loai', 'loai_sp'));
    }

    public function getChiTiet(Request $req){
        $sanpham = Product::where('id',$req->id)->first();
        $sp_cungloai = Product::where('id_type',$sanpham->id_type)->paginate(3);
        return view('page.chi_tiet', compact('sanpham', 'sp_cungloai'));
    }

    public function getLienHe(){
        return view('page.lien_he');
    }

    public function getThongTin(){
        return view('page.thong_tin');
    }

    public function getAddtoCart(Request $req, $id){
        $product  = Product::find($id);
        $oldCart = Session('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart);
        $cart->add($product, $id);
        $req->session()->put('cart', $cart);
        return redirect()->back();
    }

    public function getDelItemCart($id){
        $oldCart = Session::has('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart);
        $cart->removeItem($id);
        if(count($cart->items)>0){
            Session::put('cart', $cart);
        }else{
            Session::forget('cart');
        }
        
        return redirect()->back();
    }

    public function getCheckout(){
        return view('page.dat_hang');
    }

    public function postCheckout(Request $req){
        $cart = Session::get('cart');

        $customer = new Customer;
        $customer->name = $req->full_name;
        $customer->gender = $req->gender;
        $customer->email = $req->email;
        $customer->address = $req->address;
        $customer->phone_number = $req->phone;
        $customer->note = $req->notes;
        $customer->save();

        $bill = new Bill;
        $bill->id_customer = $customer->id;
        $bill->date_order = date('Y-m-d');
        $bill->total = $cart->totalPrice;
        $bill->payment = $req->payment_method;
        $bill->note = $req->notes;
        $bill->save();

        foreach($cart->items as $kye=>$value){
            $bill_detail = new BillDetail;
            $bill_detail->id_bill = $bill->id;
            $bill_detail->id_product = $kye;
            $bill_detail->quantity = $value['qty'];
            $bill_detail->unit_price = $value['price']/$value['qty'];
            $bill_detail->save();
        }

        Session::forget('cart');
        return redirect()->back()->with('thongbao','Đặt hàng thành công');
    }

    

    public function getRegister(){
        return view('page.dangki');
    }

    public function postRegister(Request $req){
        $this->validate($req,
            [
                'email'=>'required|email|unique:users,email',
                'password'=>'required|min:6|max:20',
                'name'=>'required',
                're_password'=>'required|same:password'
            ],
            [
                'email.required'=>'Vui lòng nhập Email',
                'email.email'=>'Không đúng định dạng email',
                'email.unique'=>'Email đã được sử dụng',
                'password.required'=>'Vui lòng nhập password',
                're_password.same'=>'Mật khẩu không trùng khớp',
                'password.min'=>'Mật khẩu ít nhất 6 kí tự',
            ]
            );
        $user = new User();
        $user->name = $req->name;
        $user->email = $req->email;
        $user->password = Hash::make($req->password);
        // $user->phone = $req->phone;
        // $user->address = $req->address;
        $user->save();
        return redirect()->back()->with('thanhcong','Tạo tài khoản thành công');
    }


    public function getLogin(){
        return view('page.dangnhap');
    }

    public function postLogin(Request $req){
        $this->validate($req,
            [
                'email'=>'required|email',
                'password'=>'required|min:6|max:20'
            ],
            [
                'email.required'=>'Vui lòng nhập Email',
                'email.email'=>'Email không hợp lệ',
                'password.required'=>'Vui lòng nhập mật khẩu',
                'password.min'=>'Mật khẩu ít nhất 6 kí tự',
                'password.max'=>'Mật khẩu không quá 20 kí tự'
            ]
        );
        $credentials = array('email'=>$req->email, 'password'=>$req->password);
        if(Auth::attempt($credentials)){
            return redirect()->back()->with(['flag'=>'success','thongbao'=>'Đăng nhập thành công']);
        }else
            return redirect()->back()->with(['flag'=>'danger','thongbao'=>'Đăng nhập không thành công']);

    }


    public function postLogout(){
        Auth::logout();
        return redirect()->route('trang-chu');
    }



    public function getSearch(Request $req){
        $product = Product::where('name', 'like','%'.$req->key.'%')
                                    ->orWhere('unit_price', $req->key)
                                    ->get();
        return view('page.search', compact('product'));
    }


    
}
