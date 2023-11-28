// DoctorPage.js
import React, { useState,useEffect } from 'react';
import './home.css';
import doctor from '../assets/doctor.jpg'
import { Link } from 'react-router-dom';


function Doctor() {
 
  return (
    <div className="doctor-page">
      <div className="doctor-details">
        <img src={doctor} alt="Doctor" className="doctor-image" />
        <h2>Name: Rahul agarwal</h2>
        <h3>Department: Cardiology</h3>
        <p>Phone Number: +123-456-7890</p>
      </div>
      <div className="student-form">
        <h2>Enter Student LDAP ID</h2>
        <input type="text" id="ldapId" className="input-field" placeholder="LDAP ID" />
        <button  className="proceed-button white">
        <Link to="/student">Proceed</Link>
        </button>
      </div>
    </div>
  );
}

export default Doctor;
