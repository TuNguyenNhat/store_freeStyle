import { Route, Routes } from 'react-router-dom'

import DefaultLayout from '../components/layouts/DefaultLayout';

import Trangchu from '../pages/Trangchu';
import Quan from '../pages/Quan';

//Nhúng cho phần Link ở Footer
import Album from '../pages/Trangchu/components/Album';

const Routing = () => {
    return (
        <>
            <DefaultLayout>
                <Routes>
                    <Route path='/' element={<Trangchu />} />
                    <Route path='/quan' element={<Quan/>} />

                    <Route path='/album' element={<Album/>} />
                </Routes>
            </DefaultLayout>
        </>
    )
}

export default Routing