import Navi from "./Navi/Navi";
import Footer from "./Footer/Footer";

import { useState } from "react";

const DefaultLayout = (props) => {
    const {children} = props;

    const check = useState();

    return (
        <>
            <Navi/>
            {children};
            <Footer/>
        </>
    )
}

export default DefaultLayout;