import React from 'react';
import './home.css';
import logo from '../assets/iit-logo.png';
import { Link } from 'react-router-dom';
import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from 'axios';


const Home = () => {
  const navigate = useNavigate();
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');

  const handleLogin = async () => {
    try {
      const response = await fetch('http://127.0.0.1:8000/accounts/doctor/', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          username: username,
          password: password,
        }),
      });
      if (response.ok) {
        // If authentication is successful, parse and store user details
        const doctor = await response.json();

        // Store user details (you can use state, context, or a state management library like Redux)
        // For example, using localStorage for simplicity here
        localStorage.setItem('user', JSON.stringify(doctor));

        // Redirect to UserDetailsPage
        navigate('/doctor');
      } else {
        // Handle authentication error
        console.error('Authentication failed');
      }
    } catch (error) {
      console.error('Error during login:', error);
    }
  };

  return (
    <div>
      <section className="vh-100">

    {/* navbar */}
      <nav className="navbar navbar-expand-lg navbar-dark bg-primary" style={{textAlign:'center'}}>
  <a class="navbar-brand"  href="#">Hospital Management System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  
</nav>

{/* page */}
  <div className="container-fluid h-custom">
    <div className="row d-flex justify-content-center align-items-center h-100">
      <div className="col-md-9 col-lg-6 col-xl-5">
        <img src={logo}
          className="img-fluid" alt="Sample image"/>
      </div>
      <div className="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        <form>
          <div className="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
            <p className="lead fw-normal mb-0 me-3">Sign in as</p>
            <button type="button" className="btn btn-primary btn-floating mx-1">
              <p>Doctor</p>
              <i className="fab fa-facebook-f"></i>
            </button>

            <button type="button" className="btn btn-primary btn-floating mx-1">
              <p>Receptionist</p>
              <i className="fab fa-twitter"></i>
            </button>

            <button type="button" className="btn btn-primary btn-floating mx-1">
              <p>Pharmacist</p>
              <i className="fab fa-linkedin-in"></i>
            </button>
            <button type="button" className="btn btn-primary btn-floating mx-1">
              <p>Labstaff</p>
              <i className="fab fa-linkedin-in"></i>
            </button>
          </div>
          <div>
<p> </p>
          </div>

         
          <div className="form-outline mb-4">
            <input type="email" id="form3Example3" className="form-control form-control-lg"
              placeholder="Enter an valid id" value={username}  onChange={(e) => setUsername(e.target.value)} />
            <label className="form-label" htmlFor="form3Example3">Unique Authentication id</label>
          </div>

          
          <div className="form-outline mb-3">
            <input type="password" id="form3Example4" className="form-control form-control-lg"
              placeholder="Enter password" value={password} onChange={(e) => setPassword(e.target.value)}/>
            <label className="form-label" htmlFor="form3Example4">Password</label>
          </div>

          <div className="d-flex justify-content-between align-items-center">
          
            <a href="#!" className="text-body">Forgot password?</a>
          </div>

          <div className="text-center text-lg-start mt-4 pt-2">
            <button  onClick={handleLogin} type="button" className="btn btn-primary btn-lg"
              style={{paddingLeft: '2.5rem', paddingRight: '2.5rem'}}>Login</button>
            <p className="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="#!"
                className="link-danger">Register</a></p>
          </div>

        </form>
      </div>
    </div>
  </div>
  <div
    className="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
  </div>
</section>
    </div>
  )
}

export default Home
