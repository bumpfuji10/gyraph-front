<script>
import axios from 'axios';

export default {
  created() {
    this.fetchPing();
  },
  methods: {
    fetchPing() {
      axios.get('http://localhost:3000/api/v1/ping')
        .then(response => {
          console.log('Response:', response.data);
        })
        .catch(error => {
          console.error('Error:', error);
        });
    }
  }
}
</script>
