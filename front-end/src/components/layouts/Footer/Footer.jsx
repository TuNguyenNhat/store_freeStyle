// Nhúng thư viện react Hooks, react-dom,...
import { Link, useLocation } from "react-router-dom";

// Nhúng icon từ thư viện lucide-react đã tải vể
import { Facebook, Instagram, Github, Youtube } from 'lucide-react';

// Nhúng file style của Footer
import "./styleFooter.css";

// Nhúng component
import Album from "../../../pages/Trangchu/components/Album"

const Footer = () => {
    const location = useLocation();

    const isActive = (path) => location.pathname === path;

    return (
        <>
            <footer className="bg-[#FAFAFA] border-t border-[#CFD3CB]">
                <div className="mx-auto max-w-2xl px-4 sm:px-6 lg:max-w-7xl lg:px-8 py-8">
                    <div className="flex flex-col md:flex-row md:justify-between">

                        <div className="mb-6 md:mb-0 w-80">
                            <span className="text-4xl" style={{fontWeight: 'bold', color: '#BF2025', fontStyle: 'italic'}}>Freestyle</span>
                            <h3 className="text-sm text-gray-900  mt-2" style={{fontWeight: 'bold'}}>HKD Nguyễn Văn Thành</h3>
                            <div className="text-[10px] text-gray-900">
                                <p>
                                  Giấy chứng nhận đăng ký HKD số 17A80041952 do Phòng Tài chính - Kế hoạch, Uỷ ban nhân dân thành phố Thái
                                  Nguyên cấp ngày
                                  30/5/2019
                                </p>
                                <p>Địa chỉ: Số 235, Đường Quang Trung, Tổ 7, Phường Tân Thịnh, Thành phố Thái Nguyên, Tỉnh Thái Nguyên, Việt
                                  Nam</p>
                                <p>Email: freestyle@gmail.com</p>
                                <p>Điện thoại: 0987654321</p>
                            </div>
                            <img src="media/logo_bct.webp" alt="" className="h-16 my-2"/>
                        </div>

                        <div className="w-96">
                            <p className="text-sm">Đăng ký nhận bản tin của chúng tôi để nhận thông tin mới nhất về sản phẩm và ưu đãi.</p>
                            <form action="" className="my-4 flex flex-col gap-2">
                                <input className="w-full border-b-2  p-2 text-base bg-transparent outline-none" 
                                        type="email" 
                                        placeholder="Nhập email của bạn" 
                                        required/>
                                <button style={{color: '#BF2025', fontWeight: 'bold'}}
                                        type="submit"
                                        className="w-full bg-[#FAF3E0] text-white py-3 px-7 border-none cursor-pointer transition-colors duration-300">
                                    ĐĂNG KÝ
                                </button>
                            </form>
                            <h2 className="text-sm">Theo dõi các nền tảng</h2>
                            <div className='flex gap-4 mt-2'>
                                <a href=""><Facebook/></a>
                                <a href=""><Instagram/></a>
                                <a href=""><Github/></a>
                                <a href=""><Youtube/></a>
                            </div>
                        </div>

                        <div>
                            <h3 className="text-base mb-2" style={{color: '#BF2025', fontWeight: 'bold'}}>Về chúng tôi
                            </h3>
                            <div className="flex flex-col gap-2 text-sm footer-3">
                                <Link to="/" className={isActive("/") ? "active" : "hover:text-gray-800"}>Trang chủ</Link>
                                <Link to="/gioithieu" className={isActive("/gioithieu") ? "active" : "hover:text-gray-800"}>Giới thiệu</Link>
                                <Link to="/album" className={isActive("/album") ? "active" : "hover:text-gray-800"}>Album</Link>
                                <Link to="/blog" className={isActive("/blog") ? "active" : "hover:text-gray-800"}>Blog</Link>
                                <Link to="/hethongcuahang" className={isActive("/hethongcuahang") ? "active" : "hover:text-gray-800"}>Hệ thống cửa hàng</Link>
                            </div>
                        </div>

                        <div>
                            <h3 className="text-base mb-2" style={{color: '#BF2025', fontWeight: 'bold'}}>Chính sách</h3>
                            <div className="flex flex-col gap-2 text-sm">
                                <a href="#" className="hover:text-gray-800">Chính sách bảo mật</a>
                                <a href="#" className="hover:text-gray-800">Chính sách đổi trả</a>
                                <a href="#" className="hover:text-gray-800">Chính sách vận chuyển</a>
                                <a href="#" className="hover:text-gray-800">Chính sách thanh toán</a>
                                <a href="#" className="hover:text-gray-800">Chính sách bảo hành</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div className="mt-4 text-sm text-gray-500  text-center border-t py-2">
                    © 2025 Thiết kế và phát triển bởi <span style={{color: '#BF2025'}}>Nguyễn Văn Thành</span> và <span style={{color: '#BF2025'}}>Nguyễn Nhật Tú</span>
                </div>

            </footer>
        </>
    )
}

export default Footer