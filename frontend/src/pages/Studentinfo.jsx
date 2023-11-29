import React from 'react';
import styles from './student.module.css';
import image from '../assets/student.png';

const Studentinfo = () => {
  // Sample data for demonstration
  const patientInfo = {
    name: 'Praveen',
    department: 'Electrical engineering',
    rollNo: '22b3931',
    imageSrc: 'path/to/patient-image.jpg',
    previousVisits: [
      { date: '2023-01-15', doctor: 'Dr. Smith',department:'Cardiology' },
      { date: '2023-03-22', doctor: 'Dr. Johnson',department:'Gastrology' },
    ],
    pendingReimbursements: [
      { reportName: 'MRI Scan', doctor: 'Dr. Williams', date: '2023-05-10' },
    ],
    pendingLabReports: [
      { reportName: 'Blood Test', doctor: 'Dr. Anderson', date: '2023-04-18' },
    ],
  };

  return (
    <div className={styles.patientinfopage}>
      <div className={styles.patientheader}>
        <img className={styles.patientimage} src={image} alt="Patient" />
        <div className={styles.patientdetails}>
          <h1>{patientInfo.name}</h1>
          <p>Department: {patientInfo.department}</p>
          <p>Roll No: {patientInfo.rollNo}</p>
        </div>
      </div>

      <div className={styles.patientsection}>
        <h2>Previous Visits</h2>
        <table className={styles.visittable}>
          <thead>
            <tr>
              <th>Date</th>
              <th>Doctor</th>
              <th>Department</th>
            </tr>
          </thead>
          <tbody>
            {patientInfo.previousVisits.map((visit, index) => (
              <tr key={index}>
                <td>{visit.date}</td>
                <td>{visit.doctor}</td>
                <td>{visit.department}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      <div className={styles.patientsection}>
        <h2>Pending Reimbursement Requests</h2>
        <table className={styles.reporttable}>
          <thead>
            <tr>
              <th>Report Name</th>
              <th>Doctor</th>
              <th>Date</th>
            </tr>
          </thead>
          <tbody>
            {patientInfo.pendingReimbursements.map((request, index) => (
              <tr key={index}>
                <td>{request.reportName}</td>
                <td>{request.doctor}</td>
                <td>{request.date}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      <div className={styles.patientsection}>
        <h2>Pending Lab Reports</h2>
        <table className={styles.reporttable}>
          <thead>
            <tr>
              <th>Report Name</th>
              <th>Doctor</th>
              <th>Date</th>
            </tr>
          </thead>
          <tbody>
            {patientInfo.pendingLabReports.map((report, index) => (
              <tr key={index}>
                <td>{report.reportName}</td>
                <td>{report.doctor}</td>
                <td>{report.date}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default Studentinfo;
