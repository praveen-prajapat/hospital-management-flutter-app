import './App.css';
import Doctor from './pages/Doctor';
import Home from './pages/Home';
import { BrowserRouter as Router, Route, Routes} from 'react-router-dom';
import Receptionist from './pages/Receptionist';
import Labstaff from './pages/Labstaff';
import Pharmacy from './pages/Pharmacy';
import Patient from './pages/Patient';
import Studentinfo from './pages/Studentinfo';
import DoctorReg from './pages/Doctorreg';
import ForgotPass from './pages/ForgotPass'

function App() {
  return (
    <div className="App">
      <Router>
        <Routes>
          <Route path='/' element={<Home/>} />
          <Route path='/doctor' element={<Doctor/>} />
          <Route path='/student' element={<Patient/>} />
          <Route path='/receptionist' element={<Receptionist/>} />
          <Route path='/labstaff' element={<Labstaff/>} />
          <Route path='/pharmacy' element={<Pharmacy/>} />
          <Route path='/receptionist/studentinfo' element={<Studentinfo/>} />
          <Route path='/register' element={<DoctorReg/>} />
          <Route path='/forgot-password' element={<ForgotPass/>} />
          
        </Routes>
      </Router>
    </div>
  );
}

export default App;
