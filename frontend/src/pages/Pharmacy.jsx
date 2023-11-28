// PharmacistPage.js
import React, { useState } from 'react';
import './pharmacy.css';
import { Link } from 'react-router-dom';
import image from '../assets/student.png'

const initialStudentData = {
  name: 'Praveen',
  photo: 'https://via.placeholder.com/150', // Replace with the actual URL of the student's photo
  department: 'Electrical engineering',
};

function StudentSearch({ onStudentSelect }) {
  const [rollNo, setRollNo] = useState('');

  const handleSearch = () => {
    onStudentSelect(initialStudentData);
  };

  return (
    <div className="student-search">
      <label>Enter Roll Number:</label>
      <input
        type="text"
        value={rollNo}
        onChange={(e) => setRollNo(e.target.value)}
      />
      <button onClick={handleSearch}>Search</button>
    </div>
  );
}

function PrescriptionList({ prescriptions }) {
  return (
    <div className="prescription-list">
      <h3>Latest Prescriptions</h3>
      <ul>
        {prescriptions.map((medicine, index) => (
          <li key={index}>
            <strong>Name:</strong> {medicine.name}, {' '}
            <strong>Quantity:</strong> {medicine.quantity}, {' '}
            {/* <strong>Serial Number:</strong> {medicine.serialNumber}, {' '} */}
            <strong>Price:</strong> {medicine.price}
          </li>
        ))}
      </ul>
    </div>
  );
}

function StudentDetails({ student }) {
  const [prescriptions, setPrescriptions] = useState([]);
  const [newMedicine, setNewMedicine] = useState({
    name: '',
    quantity: '',
    price: '',
  });

  const handleAddMedicine = () => {
    const serialNumber = prescriptions.length + 1;
    const medicine = { ...newMedicine, serialNumber };

    const updatedPrescriptions = [...prescriptions, medicine];
    setPrescriptions(updatedPrescriptions);

    setNewMedicine({
      name: '',
      quantity: '',
      price: '',
    });
  };

  return (
    <div className="student-details">
      <div className="patient-info">
        <div className="photo-container">
          <img src={image} alt={student.name} />
        </div>
        <div className="details-container">
          <h2>{student.name}</h2>
          <p>Department: {student.department}</p>
        </div>
      </div>

      <div className="medicine-info">
        <PrescriptionList prescriptions={prescriptions} />

        <h3>Add Medicine:</h3>
        <form>
          <label>Medicine Name:</label>
          <input
            type="text"
            value={newMedicine.name}
            onChange={(e) => setNewMedicine({ ...newMedicine, name: e.target.value })}
          />

          <label>Quantity:</label>
          <input
            type="text"
            value={newMedicine.quantity}
            onChange={(e) => setNewMedicine({ ...newMedicine, quantity: e.target.value })}
          />

          <label>Price:</label>
          <input
            type="text"
            value={newMedicine.price}
            onChange={(e) => setNewMedicine({ ...newMedicine, price: e.target.value })}
          />

          <button type="button" onClick={handleAddMedicine}>
            Add Medicine
          </button>
        </form>
      </div>
      
    </div>
  );
}

function Pharmacy() {
  const [selectedStudent, setSelectedStudent] = useState(null);

  const handleStudentSelect = () => {
    setSelectedStudent(initialStudentData);
  };

  return (
    <div className="pharmacist-page">
      <h1>Pharmacist Page</h1>
      <StudentSearch onStudentSelect={handleStudentSelect} />
      {selectedStudent && <StudentDetails student={selectedStudent} />}
    </div>
  );
}

export default Pharmacy;
