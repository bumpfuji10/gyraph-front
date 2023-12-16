<template>
  <div>
    <ul>
      <li v-for="user in users" :key="user.id">
        {{ user.name }} - {{ user.email }}
      </li>
      <li v-for="practiceRecord in practiceRecords" :key="practiceRecord.id">
        {{ practiceRecord.id }} - {{ practiceRecord.practiced_date }}
      </li>
      <li v-for="practiceDetail in practiceDetails" :key="practiceDetail.id">
        {{ practiceDetail.title }} - {{ practiceDetail.content }}
      </li>
    </ul>
  </div>
</template>

<script lang="ts">
import { getUsers } from '../../resources/user';
import { getPracticeRecords } from '../../resources/practiceRecord'
import { getPracticeDetails } from '../../resources/practiceDetail'

interface User {
  id: number;
  name: string;
  email: string;
}

interface PracticeRecord {
  id: number;
  practiced_date: Date;
}

interface PracticeDetail {
  id: number;
  title: string;
  content: string;
  practice_record_id: number;
}
export default {
  data() {
    return {
      users: [] as User[],
      practiceRecords: [] as PracticeRecord[],
      practiceDetails: [] as PracticeDetail[]
    }
  },
  created() {
    this.fetchUsers();
    this.fetchPracticeRecord();
    this.fetchPracticeDetail();
  },
  methods: {
    async fetchUsers(): Promise<void> {
      try {
        const response = await getUsers();
        this.users = response.data
        console.log(this.users);
      } catch (error) {
        console.error(error);
      }
    },
    async fetchPracticeRecord(): Promise<void> {
      try {
        const response = await getPracticeRecords();
        this.practiceRecords = response.data
        console.log(this.practiceRecords)
      } catch (error) {
        console.error(error);
      }
    },
    async fetchPracticeDetail(): Promise<void> {
      try {
        const response = await getPracticeDetails();
        this.practiceDetails = response.data
        console.log(this.practiceDetails)
      } catch (error) {
        console.error(error);
      }
    },
  }
}

</script>
