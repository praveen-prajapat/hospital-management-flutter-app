// DoctorPage.js
import React, { useState,useEffect } from 'react';
import styles from './doctor.module.css'
import doctor from '../assets/doctor.jpg'
import { Link } from 'react-router-dom';


function Doctor() {
 
  return (
    <div className={styles.doctorpage}>
      <div className={styles.doctordetails}>
        <img src={doctor} alt="Doctor" className={styles.doctorimage} />
        <h2 style={{color:'white'}}>Name: Rahul agarwal</h2>
        <h3>Department: Cardiology</h3>
        <p>Phone Number: +123-456-7890</p>
      </div>
      <div className={styles.studentform}>
        <h2>Enter Student LDAP ID</h2>
        <input type="text" id="ldapId" className={styles.inputfield} placeholder="LDAP ID" />
        <button  className={`${styles.proceedbutton} white}`}>
        <Link style={{ textDecoration: 'none', color: 'white' }} to="/student">Proceed</Link>
        </button>
      </div>
    </div>
  );
}

export default Doctor;
