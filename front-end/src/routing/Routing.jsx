import { Route, Routes } from 'react-router-dom'

import DefaultLayout from '../components/layouts/DefaultLayout';

import Trangchu from '../pages/Trangchu';
import Quan from '../pages/Quan';

const Routing = () => {
    return (
        <>
            <DefaultLayout>
                <Routes>
                    <Route path='/' element={<Trangchu />} />
                    <Route path='/quan' element={<Quan/>} />
                </Routes>
            </DefaultLayout>
        </>
    )
}

export default Routing