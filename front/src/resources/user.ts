import axios from 'axios';
interface UserCreateParams {
  name: string;
  email: string;
  password: string;
}

export const getUsers = () => {
  return axios.get(`http://localhost:3000/api/v1/users`);
};

export const createUser = (params: UserCreateParams) => {
  console.log(params)
  return axios.post('http://localhost:3000/api/v1/users', { user: params })
}
