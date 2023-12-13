import axios from 'axios';

export const getPracticeRecords = () => {
  return axios.get(`http://localhost:3000/api/v1/practice_records`);
};
