<template>
    <div class="container">
        <h1>---Users list---</h1>
        <div style="margin-bottom: 20px;" v-for="user, i in users" :key="i">
            <div class="profile">
                <div>
                    <div class="profile-data-row">
                        <p style="margin-right: 10px;">Name:</p>
                        <p>{{ user.name }}</p>
                    </div>
                    <div class="profile-data-row">
                        <p style="margin-right: 10px;">Address:</p>
                        <p>{{ user.address }}</p>
                    </div>
                </div>
                <div class="button-profile">
                    <button class="button-element" style="margin-bottom: 10px;"
                    @click="detailUser(user.id)">Detail</button>
                    <button class="button-element" style="background-color: red;"
                    @click="deleteUser(user.id)">Delete</button>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
  data () {
    return {
      users: [
        {
          id: 1,
          name: 'udin',
          address: 'sleman'
        },
        {
          id: 2,
          name: 'udin1',
          address: 'kaliurang'
        },
        {
          id: 3,
          name: 'udin2',
          address: 'monjali'
        }
      ]
    }
  },
  methods: {
    detailUser (id) {
      this.$router.push(`/users/${id}`)
    },
    deleteUser (id) {
      console.log(`Delete Feature for user id = ${id}`)
    }
  }
}
</script>
<style scoped>
.container {
    margin: 100px;
    border: 1px solid black;
    height: 600px;
    width: 600px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.profile {
    display: flex;
    align-items: center;
}
.button-profile {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.button-element {
    padding: 10px 30px;
    background-color: #80BDE3;
    color: white;
}
.profile-data-row {
    width: 300px;
    display: flex;
    font-size: 20px;
}
</style>
