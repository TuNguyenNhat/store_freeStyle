// Nhúng thư viện react Hooks, react-dom,...
import { Link } from "react-router-dom";

// Nhúng icon từ thư viện lucide-react đã tải vể
import { ArrowLeft } from 'lucide-react';
import { Wrench } from 'lucide-react';

// Nhúng file style 
import "./styleDangnhap.css";

const Dangnhap = () => {
    return (
        <>
            <div className="min-h-screen bg-gray-100 flex items-center justify-center ">
                <div className="flex flex-col justify-center items-center w-full lg:w-1/2 bg-white py-12 px-4 sm:px-6 lg:px-8">
                    <div className="max-w-md w-full space-y-8">

                        <div className="flex justify-center">
                            <div className="flex-shrink-0 logo">
                                Freestyle
                            </div>
                        </div>

                        <div>
                            <h3 className="mt-6 text-center text-3xl font-extrabold text-gray-900">Đăng Nhập</h3>
                        </div>

                        <form className="mt-8 space-y-6">
                            <div className="space-y-1">
                                <label htmlFor="email" className="block text-sm font-medium text-gray-700">
                                    Email
                                </label>
                                <div className="mt-1">
                                    <input
                                        id="email"
                                        name="email"
                                        type="email"
                                        autoComplete="email"
                                        required
                                        className="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm"
                                        placeholder="Nhập email của bạn"/>
                                </div>
                            </div>

                            <div className="space-y-1">
                                <label htmlFor="password" className="block text-sm font-medium text-gray-700">
                                    Mật Khẩu
                                </label>
                                <div className="mt-1">
                                    <input
                                        id="password"
                                        name="password"
                                        type="password"
                                        autoComplete="current-password"
                                        required
                                        className="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-blue-500 focus:border-blue-500 sm:text-sm"
                                        placeholder="Nhập mật khẩu của bạn"/>
                                </div>
                            </div>

                            <div className="flex items-center justify-between">
                                {/* Đăng ký */}
                                <div className="text-sm">
                                    Bạn chưa có tài khoản?{' '}
                                    <Link className="font-medium text-blue-600 hover:text-blue-500" to="/dangki">Đăng kí</Link>
                                </div>

                                <div className="text-sm">
                                    <Link to="/admin/login"><Wrench/></Link>
                                </div>
                            </div>

                            {/* Thông báo lỗi */}
                            <p className="mt-4 text-red-500 text-sm text-center">Mật khẩu hoặc tài khoản sai</p>

                            {/* Nút đăng nhập */}
                            <div>
                                <button
                                    type="submit"
                                    className="group relative w-full flex justify-center py-2 px-4 border border-transparent font-medium rounded-md text-white bg-red-500 hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500">
                                    Đăng nhập
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <div className='backdangnhap'>
                    <Link to="/"><ArrowLeft/></Link>
                </div>
            </div>
        </>
    )
}

export default Dangnhap