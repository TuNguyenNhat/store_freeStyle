// Nhúng thư viện react Hooks, react-dom,...
import { Link, useLocation } from "react-router-dom";
import { useNavigate } from "react-router-dom";

// Nhúng icon từ thư viện lucide-react đã tải vể
import { Search } from 'lucide-react';
import { UserRound } from 'lucide-react';
import { ShoppingBag } from 'lucide-react';

// Nhúng file style của Navi
import "./styleNavi.css";

const Navi = () => {
    const location = useLocation();
    const navigate = useNavigate();

    const isActive = (path) => location.pathname === path;

    const userEmail = localStorage.getItem("userEmail");

    const click_Dangxuat = () => {
        localStorage.removeItem("userEmail");
        navigate("/dangnhap");
    }

    return (
        <header className="bg-white border-b border-gray-200 py-1 header">
            <nav className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 nav">
                <div className="flex h-16 items-center justify-between">
                    {/* Logo */}
                    <div className="flex-shrink-0 logo">
                        <Link to="/">Freestyle</Link>
                    </div>

                    {/* Menu Links */}
                    <div className="hidden lg:flex lg:space-x-8 menu">
                        <Link to="/quan" className={isActive("/quan") ? "active" : ""}>Quần</Link>
                        <Link to="/ao" className={isActive("/ao") ? "active" : ""}>Áo</Link>
                        <Link to="/phukien" className={isActive("/phukien") ? "active" : ""}>Phụ Kiện</Link>
                    </div>

                    {/* Search Bar */}
                    <div className="relative space-x-8 searchBar" style={{ position: "relative", display: "flex" }}>
                        <div className='search'>
                            <input type="text" placeholder="Bạn đang tìm gì..."/>
                            <div>
                                <Link to="/timkiem" className={isActive("/timkiem") ? "active" : ""}><Search/></Link>
                            </div>
                        </div>
                        <div className="flex items-center space-x-6">
                            {userEmail ? (
                                <div className="text-gray-600 cursor-pointer icon">
                                    <span onClick={click_Dangxuat}>{userEmail}</span>
                                </div>
                            ) : (
                                <div className="text-2xl text-gray-600 cursor-pointer icon">
                                    <Link to="/dangnhap" className={isActive("/dangnhap") ? "active" : ""}><UserRound/></Link>
                                </div>
                            )}
                            <div className="text-2xl text-gray-600 cursor-pointer icon">
                                <Link to="/giohang" className={isActive("/giohang") ? "active" : ""}><ShoppingBag/></Link>
                            </div>
                        </div>
                    </div> 

                </div>     
            </nav>
        </header>
    )
}

export default Navi