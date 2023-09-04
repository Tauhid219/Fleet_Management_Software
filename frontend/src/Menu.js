import React, { useEffect } from 'react';
import { NavLink, useNavigate } from 'react-router-dom';
import { useState } from 'react';

const Menu = () => {
    const navigate = useNavigate();
    const logout = () => {
        localStorage.removeItem('token');
        navigate('/')
    }
    const [isActive, setIsActive] = useState('nav-link');
    const [isActive1, setIsActive1] = useState('nav-link');
    const [isActive2, setIsActive2] = useState('nav-link');
    const [isActive3, setIsActive3] = useState('nav-link');
    const [isActive4, setIsActive4] = useState('nav-link');
    const [isActive5, setIsActive5] = useState('nav-link');
    const [isActive6, setIsActive6] = useState('nav-link');
    const [isActive7, setIsActive7] = useState('nav-link');

    const [mm, setmm] = useState('');
    const [op, setop] = useState('nav-item');
    const [or, setor] = useState('nav-item');
    const [of, setof] = useState('nav-item');
    const [ob, setob] = useState('nav-item');
    const [ov, setov] = useState('nav-item');
    const [om, setom] = useState('nav-item');
    const [od, setod] = useState('nav-item');
    const [oc, setoc] = useState('nav-item');

    const handleMenu = (e) => {
        setIsActive('nav-link active');
        localStorage.setItem('menu', 'parts')
    }
    const handleMenu1 = (e) => {
        setIsActive1('nav-link active');
        localStorage.setItem('menu', 'report')
    }
    const handleMenu2 = (e) => {
        setIsActive2('nav-link active');
        localStorage.setItem('menu', 'fuel')
    }
    const handleMenu3 = (e) => {
        setIsActive3('nav-link active');
        localStorage.setItem('menu', 'bookings')
    }
    const handleMenu4 = (e) => {
        setIsActive4('nav-link active');
        localStorage.setItem('menu', 'vehicle')
    }
    const handleMenu5 = (e) => {
        setIsActive5('nav-link active');
        localStorage.setItem('menu', 'maintenance')
    }
    const handleMenu6 = (e) => {
        setIsActive6('nav-link active');
        localStorage.setItem('menu', 'driver')
    }
    const handleMenu7 = (e) => {
        setIsActive7('nav-link active');
        localStorage.setItem('menu', 'customer')
    }


    useEffect(() => {
        const mmm = localStorage.getItem("menu")
        if (typeof mmm !== 'undefined') {
            console.log(mmm)
            if (mmm == 'parts') {
                setIsActive('nav-link active');
                setIsActive1('nav-link');
                setIsActive2('nav-link');
                setIsActive3('nav-link');
                setIsActive4('nav-link');
                setIsActive5('nav-link');
                setIsActive6('nav-link');
                setIsActive7('nav-link');

                setop('nav-item menu-open')
                setor('nav-item')
                setof('nav-item ')
                setob('nav-item ')
                setov('nav-item ')
                setom('nav-item ')
                setod('nav-item ')
                setoc('nav-item ')
            }
            if (mmm == 'report') {
                setIsActive('nav-link');
                setIsActive1('nav-link active');
                setIsActive2('nav-link');
                setIsActive3('nav-link');
                setIsActive4('nav-link');
                setIsActive5('nav-link');
                setIsActive6('nav-link');
                setIsActive7('nav-link');

                setop('nav-item ')
                setor('nav-item menu-open')
                setof('nav-item ')
                setob('nav-item ')
                setov('nav-item ')
                setom('nav-item ')
                setod('nav-item ')
                setoc('nav-item ')

            }
            if (mmm == 'fuel') {
                setIsActive('nav-link');
                setIsActive1('nav-link');
                setIsActive2('nav-link active');
                setIsActive3('nav-link');
                setIsActive4('nav-link');
                setIsActive5('nav-link');
                setIsActive6('nav-link');
                setIsActive7('nav-link');


                setop('nav-item ')
                setor('nav-item ')
                setof('nav-item menu-open')
                setob('nav-item ')
                setov('nav-item ')
                setom('nav-item ')
                setod('nav-item ')
                setoc('nav-item ')

            }
            if (mmm == 'bookings') {
                setIsActive('nav-link');
                setIsActive1('nav-link');
                setIsActive2('nav-link');
                setIsActive3('nav-link active');
                setIsActive4('nav-link');
                setIsActive5('nav-link');
                setIsActive6('nav-link');
                setIsActive7('nav-link');


                setop('nav-item ')
                setor('nav-item ')
                setof('nav-item')
                setob('nav-item menu-open')
                setov('nav-item')
                setom('nav-item ')
                setod('nav-item ')
                setoc('nav-item ')

            }
            if (mmm == 'vehicle') {
                setIsActive('nav-link');
                setIsActive1('nav-link');
                setIsActive2('nav-link');
                setIsActive3('nav-link');
                setIsActive4('nav-link active');
                setIsActive5('nav-link');
                setIsActive6('nav-link');
                setIsActive7('nav-link');

                setop('nav-item ')
                setor('nav-item ')
                setof('nav-item ')
                setob('nav-item ')
                setov('nav-item menu-open')
                setom('nav-item ')
                setod('nav-item ')
                setoc('nav-item ')

            }
            if (mmm == 'maintenance') {
                setIsActive('nav-link');
                setIsActive1('nav-link');
                setIsActive2('nav-link');
                setIsActive3('nav-link');
                setIsActive4('nav-link');
                setIsActive5('nav-link active');
                setIsActive6('nav-link');
                setIsActive7('nav-link');

                setop('nav-item ')
                setor('nav-item ')
                setof('nav-item ')
                setob('nav-item ')
                setov('nav-item ')
                setom('nav-item menu-open')
                setod('nav-item ')
                setoc('nav-item ')

            }
            if (mmm == 'driver') {
                setIsActive('nav-link');
                setIsActive1('nav-link');
                setIsActive2('nav-link');
                setIsActive3('nav-link');
                setIsActive4('nav-link');
                setIsActive5('nav-link');
                setIsActive6('nav-link active');
                setIsActive7('nav-link');

                setop('nav-item ')
                setor('nav-item ')
                setof('nav-item ')
                setob('nav-item ')
                setov('nav-item ')
                setom('nav-item ')
                setod('nav-item menu-open')
                setoc('nav-item ')

            }
            if (mmm == 'customer') {
                setIsActive('nav-link');
                setIsActive1('nav-link');
                setIsActive2('nav-link');
                setIsActive3('nav-link');
                setIsActive4('nav-link');
                setIsActive5('nav-link');
                setIsActive6('nav-link');
                setIsActive7('nav-link active');

                setop('nav-item ')
                setor('nav-item ')
                setof('nav-item ')
                setob('nav-item ')
                setov('nav-item ')
                setom('nav-item ')
                setod('nav-item ')
                setoc('nav-item menu-open')

            }
        }
        console.log(isActive)
    }, []);

    return (
        <>
            <nav className="main-header navbar navbar-expand navbar-white navbar-light">
                <ul className="navbar-nav ml-auto">


                    <li className="nav-item">
                        <a className="nav-link" data-widget="fullscreen" href="#" role="button">
                            <i className="fas fa-expand-arrows-alt"></i>
                        </a>
                    </li>
                    <li className="nav-item">
                        <a className="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
                            <i className="fas fa-th-large"></i>
                        </a>
                    </li>
                </ul>
            </nav>
            <aside className="main-sidebar sidebar-dark-primary elevation-4">

                <a href="index3.html" className="brand-link">
                    <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" className="brand-image img-circle elevation-3" style={{ opacity: .8 }} />
                    <span className="brand-text font-weight-light">AdminLTE 3</span>
                </a>


                <div className="sidebar">

                    <div className="user-panel mt-3 pb-3 mb-3 d-flex">
                        <div className="image">
                            <img src="dist/img/user2-160x160.jpg" className="img-circle elevation-2" alt="User Image" />
                        </div>
                        <div className="info">
                            <a href="#" className="d-block">Alexander Pierce</a>
                        </div>
                    </div>

                    <nav className="mt-2">
                        <ul className="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                            {/* Rubel */}
                            <li className={ov}>
                                <a href="" className={isActive4}>
                                    <i className="nav-icon fa-solid fa-car-side"></i>
                                    <p>
                                        Vehicle Management
                                        <i className="fas fa-angle-left right"></i>
                                    </p>
                                </a>
                                <ul className="nav nav-treeview">
                                    <li className="nav-item">

                                        <NavLink to="/type" className="nav-link" onClick={handleMenu4}>
                                            <i className="nav-icon fa-solid fa-address-book"></i>
                                            <p>
                                                Add Vehicle Type
                                            </p>
                                        </NavLink>
                                    </li>
                                    <li className="nav-item">
                                        <NavLink to="/typelist" className="nav-link" onClick={handleMenu4}>
                                            <i className="nav-icon fa-solid fa-list-ul"></i>
                                            <p>
                                                Vehicle Type List
                                            </p>
                                        </NavLink>
                                    </li>
                                    <li className="nav-item">
                                        <NavLink to="/add" className="nav-link" onClick={handleMenu4}>
                                            <i className="nav-icon fa-solid fa-address-book"></i>
                                            <p>
                                                Add vehicle
                                            </p>
                                        </NavLink>
                                    </li>
                                    <li className="nav-item">

                                        <NavLink to="/vehicle" className="nav-link" onClick={handleMenu4}>
                                            <i className="nav-icon fa-solid fa-list-ul"></i>
                                            <p>
                                                Vehicle list
                                            </p>
                                        </NavLink>
                                    </li>

                                </ul>
                            </li>
                            {/* Mahmud Vai */}
                            <li className={od}>
                                <a href="#" className={isActive6}>
                                    <i className="nav-icon fa-solid fa-dharmachakra"></i>

                                    <p>
                                        Driver
                                        <i className="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul className="nav nav-treeview">
                                    <li className="nav-item">
                                        <NavLink to="/driver" className="nav-link" onClick={handleMenu6}>
                                            <i className="nav-icon fa-solid fa-address-book"></i>
                                            <p>
                                                Add Driver
                                            </p>
                                        </NavLink>
                                    </li>
                                    <li className="nav-item">
                                        <NavLink to="/driverlist" className="nav-link" onClick={handleMenu6}>
                                            <i className="nav-icon fa-solid fa-list-ul"></i>
                                            <p>
                                                Driver List
                                            </p>
                                        </NavLink>
                                    </li>
                                    {/* opu */}
                                    <li className="nav-item">

                                        <NavLink to="/driverpaymentadd" className="nav-link" onClick={handleMenu6}>
                                            <i className="nav-icon fas fa-th"></i>
                                            <p>
                                                Driver payment
                                            </p>
                                        </NavLink>
                                    </li>
                                    <li className="nav-item">
                                        <NavLink to="/driverpaymentlist" className="nav-link" onClick={handleMenu6}>
                                            <i className="nav-icon fas fa-th"></i>
                                            <p>
                                                Driver payment list
                                            </p>
                                        </NavLink>
                                    </li>
                                </ul>
                            </li>
                            {/* mamun */}
                            <li className={oc}>
                                <a href="#" className={isActive7}>
                                    <i className="nav-icon fa-solid fa-user"></i>
                                    <p>
                                        Customer
                                        <i className="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul className="nav nav-treeview">
                                    <li className="nav-item">
                                        <NavLink to="/Customer" className="nav-link" onClick={handleMenu7}>
                                            <i className="nav-icon fa-solid fa-address-book"></i>
                                            <p>
                                                Add Customer
                                            </p>
                                        </NavLink>
                                    </li>
                                    <li className="nav-item">
                                        <NavLink to="/customers_management" className="nav-link" onClick={handleMenu7}>
                                            <i className="nav-icon fa-solid fa-list-ul"></i>
                                            <p>
                                                Customer List
                                            </p>
                                        </NavLink>
                                    </li>
                                </ul>
                            </li>
                            {/* Tauhid */}
                            <li className={ob}>
                                <a href="" className={isActive3}>
                                    <i className="nav-icon fas fa-book"></i>
                                    <p>
                                        Bookings
                                        <i className="fas fa-angle-left right"></i>
                                    </p>
                                </a>
                                <ul className="nav nav-treeview">
                                    <li class="nav-item">
                                        <NavLink to="/bookingadd" className="nav-link" onClick={handleMenu3}>
                                            <i className="nav-icon fa-solid fa-address-book"></i>
                                            <p>New Entry</p>
                                        </NavLink>
                                    </li>
                                    <li class="nav-item">
                                        <NavLink to="/bookinglist" className="nav-link" onClick={handleMenu3}>
                                            <i className="nav-icon fa-solid fa-list-ul"></i>
                                            <p>Booking List</p>
                                        </NavLink>
                                    </li>
                                    <li class="nav-item">
                                        <NavLink to="/bookingreport" className="nav-link" onClick={handleMenu3}>
                                            <i className="nav-icon fa-solid fa-chalkboard-user"></i>
                                            <p>Booking Report</p>
                                        </NavLink>
                                    </li>
                                </ul>
                            </li>
                            {/* sharmin apu */}
                            <li className={of}>
                                <a href="" className={isActive2}>
                                    <i className="nav-icon fa-solid fa-gas-pump"></i>
                                    <p>
                                        Fuel
                                        <i className="fas fa-angle-left right"></i>
                                    </p>
                                </a>
                                <ul className="nav nav-treeview">
                                    <li className="nav-item">
                                        <NavLink to="/fuel" className="nav-link" onClick={handleMenu2}>
                                            <i className="nav-icon fa-solid fa-pen-to-square"></i>
                                            <p>Fuel Management</p>
                                        </NavLink>
                                    </li>
                                </ul>
                                <ul className="nav nav-treeview">
                                    <li className="nav-item">
                                        <NavLink to="/Fuel_list" className="nav-link" onClick={handleMenu2}>
                                            <i className="nav-icon fa-solid fa-flag"></i>
                                            <p>Fuel Status List</p>
                                        </NavLink>
                                    </li>
                                </ul>
                            </li>
                            {/* bijoy */}
                            <li className={op}>
                                <a href="" className={isActive}>
                                    <i className="nav-icon fa-solid fa-cart-flatbed-suitcase"></i>
                                    <p>
                                        Parts Management
                                        <i className="fas fa-angle-left right"></i>
                                    </p>
                                </a>
                                <ul className="nav nav-treeview">
                                    <NavLink to="/parts" className="nav-link" onClick={handleMenu}>
                                        <i className="nav-icon fas fa-th"></i>
                                        {/* Alamin vai */}
                                        <p onClick={handleMenu}>
                                            Parts List
                                        </p>
                                    </NavLink>
                                    {/* Ashraf */}
                                    <li className="nav-item" onClick={handleMenu}>
                                        <NavLink to="/Parts_stock_in" className="nav-link">
                                            <i className="nav-icon fas fa-th"></i>
                                            <p>
                                                Parts Stock In
                                            </p>
                                        </NavLink>
                                    </li>
                                    <li className="nav-item" onClick={handleMenu}>
                                        <NavLink to="/stock-out" className="nav-link" onClick={handleMenu}>
                                            <i className="nav-icon fa-solid fa-boxes-stacked"></i>
                                            <p onClick={handleMenu}>Parts Stock Out</p>
                                        </NavLink>
                                    </li>
                                    <li className="nav-item">
                                        <NavLink to="/parts-inventory" className="nav-link" onClick={handleMenu}>
                                            <i className="nav-icon fa-solid fa-warehouse"></i>
                                            <p>Parts Inventory</p>
                                        </NavLink>
                                    </li>
                                </ul>
                            </li>
                            {/* sifat */}
                            <li className={om}>

                                <a href="" className={isActive5}>
                                    <i className="nav-icon fa-solid fa-screwdriver-wrench"></i>
                                    <p>
                                        Maintenance
                                        <i className="fas fa-angle-left right"></i>
                                    </p>
                                </a>
                                <ul className="nav nav-treeview">
                                    {/* Surjo */}
                                    <li className="nav-item">
                                        <NavLink to="/vendor" className="nav-link" onClick={handleMenu5}>
                                            <i className="nav-icon fa-solid fa-chalkboard-user"></i>
                                            <p>Vendor Management</p>
                                        </NavLink>
                                    </li>
                                    <li className="nav-item">
                                        <NavLink to="/maintenance" className="nav-link" onClick={handleMenu5}>
                                            <i className="nav-icon fa-solid fa-address-book"></i>
                                            <p>
                                                Add Maintenance
                                            </p>
                                        </NavLink>
                                    </li>
                                    <li className="nav-item">

                                        <NavLink to="/list" className="nav-link" onClick={handleMenu5}>
                                            <i className="nav-icon fa-solid fa-list-ul"></i>
                                            <p>
                                                Maintenance List
                                            </p>
                                        </NavLink>
                                    </li>
                                </ul>
                            </li>
                            {/* nasim */}
                            <li className={or}>
                                <a href="" className={isActive1}>
                                    <i className="nav-icon fa-solid fa-chart-pie"></i>

                                    <p>
                                        Additional Cost
                                        <i className="fas fa-angle-left right"></i>
                                    </p>
                                </a>
                                <ul className="nav nav-treeview">
                                    <li className="nav-item">
                                        <NavLink to="/payment" className="nav-link" onClick={handleMenu1}>
                                            <i className="nav-icon fa-solid fa-money-check-dollar"></i>
                                            <p>Payment</p>
                                        </NavLink>
                                    </li>
                                </ul>
                            </li>

                            <li className="nav-item">

                                <NavLink to="/admin" className="nav-link">
                                    <i className="nav-icon fa-sharp fa-solid fa-users"></i>
                                    <p>
                                        User List
                                    </p>
                                </NavLink>
                            </li>
                            <li className="nav-item">
                                <a href="" className="nav-link" onClick={logout}>
                                    <i className="nav-icon fas fa-th"></i>
                                    <p>
                                        Logout
                                    </p>
                                </a>
                            </li>
                        </ul>
                    </nav>

                </div>
            </aside>
        </>
    );
}

export default Menu;
