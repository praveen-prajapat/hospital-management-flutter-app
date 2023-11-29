// ForgotPasswordPage.js

import React, { useState } from 'react';
import styles from './ForgotPasswordPage.module.css';

const ForgotPasswordPage = () => {
  const [phoneNumber, setPhoneNumber] = useState('');
  const [otp, setOtp] = useState('');
  const [isOtpSent, setIsOtpSent] = useState(false);

  const handleSendOtp = () => {
    // Simulate sending OTP to the phone number (you can use a real SMS service in a production environment)
    // For simplicity, let's generate a random 6-digit OTP here
    const generatedOtp = Math.floor(100000 + Math.random() * 900000);
    console.log('OTP sent to', phoneNumber, ':', generatedOtp);

    // Set OTP sent state to true
    setIsOtpSent(true);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    // Add your OTP verification logic here
    console.log('OTP submitted:', otp);

    // For simplicity, let's consider the OTP is correct, and the user is now logged in
    console.log('User logged in successfully!');
  };

  return (
    <div className={styles.forgotPasswordPage}>
      <h1 className={styles.title}>Forgot Password</h1>

      {!isOtpSent ? (
        <form>
          <label className={styles.formLabel}>
            Phone Number:
            <input
              type="tel"
              className={styles.inputField}
              value={phoneNumber}
              onChange={(e) => setPhoneNumber(e.target.value)}
              required
            />
          </label>

          <button
            type="button"
            className={styles.submitButton}
            onClick={handleSendOtp}
          >
            Send OTP
          </button>
        </form>
      ) : (
        <form onSubmit={handleSubmit}>
          <label className={styles.formLabel}>
            Enter OTP:
            <input
              type="text"
              className={styles.inputField}
              value={otp}
              onChange={(e) => setOtp(e.target.value)}
              pattern="\d{6}"
              required
            />
          </label>

          <button type="submit" className={styles.submitButton}>
            Submit
          </button>
        </form>
      )}
    </div>
  );
};

export default ForgotPasswordPage;
