// RegisterPage.js

import React, { useState } from 'react';
import styles from './docreg.module.css'

const Doctorreg = () => {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    phoneNumber: '',
    doctorId: '',
    department: '',
    faceImage: null,
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({ ...formData, [name]: value });
  };

  const handleImageChange = (e) => {
    const file = e.target.files[0];
    setFormData({ ...formData, faceImage: file });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    // Add your registration logic here
    console.log('Form data submitted:', formData);
  };

  return (
    <div className={styles.registerpage}>
      <h1>Doctor Registration</h1>
      <form onSubmit={handleSubmit}>
        <label>
          Name:
          <input type="text" name="name" value={formData.name} onChange={handleChange} required />
        </label>

        <label>
          Email:
          <input type="email" name="email" value={formData.email} onChange={handleChange} required />
        </label>

        <label>
          Phone Number:
          <input type="tel" name="phoneNumber" value={formData.phoneNumber} onChange={handleChange} required />
        </label>

        <label>
          Doctor ID (issued by IITB Hospital):
          <input type="text" name="doctorId" value={formData.doctorId} onChange={handleChange} required />
        </label>

        <label>
          Department:
          <input type="text" name="department" value={formData.department} onChange={handleChange} required />
        </label>

        <label>
          Face Image:
          <input type="file" name="faceImage" accept="image/*" onChange={handleImageChange} required />
        </label>

        <button type="submit">Register</button>
      </form>
    </div>
  );
};

export default Doctorreg;
