import { Route, Routes } from 'react-router-dom'

import DefaultLayout from '../components/layouts/DefaultLayout';

//Nhúng trang phía Client
import Trangchu from '../pages/Trangchu';
import Quan from '../pages/Quan';
import Dangnhap from '../pages/Dangnhap';
import Dangki from '../pages/Dangki';

//Nhúng trang phía Admin
import AdminLogin from '../pages/Admin/AdminLogin';

//Nhúng cho phần Link ở Footer
import Album from '../pages/Trangchu/components/Album';

const Routing = () => {
    return (
        <>
            {/* Các route khác sử dụng DefaultLayout có Nav và Footer */}
            <Routes>
                <Route path='/' element={<DefaultLayout><Trangchu /></DefaultLayout>} />
                <Route path='/quan' element={<DefaultLayout><Quan /></DefaultLayout>} />
                <Route path='/album' element={<DefaultLayout><Album /></DefaultLayout>} />

                {/* Route trang đăng nhập client sử dụng LoginLayout không có Nav và Footer */}
                <Route path='/dangnhap' element={<Dangnhap />} />
                <Route path='/dangki' element={<Dangki />} />

                {/* Route trang đăng nhập admin */}
                <Route path='/admin/login' element={<AdminLogin />} />
            </Routes>
        </>
    )
}

export default Routing