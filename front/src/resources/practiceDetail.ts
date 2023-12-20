import axios from 'axios';

export const getPracticeDetails = () => {
  return axios.get(`http://localhost:3000/api/v1/practice_details`);
};
