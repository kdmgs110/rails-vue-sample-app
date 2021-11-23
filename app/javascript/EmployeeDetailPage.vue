<template>
    <dl>
        <dt>ID</dt>
        <dd>{{ employee.id }}</dd>
        <dt>Name</dt>
        <dd>{{ employee.name }}</dd>
        <dt>Department</dt>
        <dd>{{ employee.department }}</dd>
        <dt>Gender</dt>
        <dd>{{ employee.gender}}</dd>
        <dt>Birth</dt>
        <dd>Joined Date</dd>
        <dt></dt>
        <dd>Note</dd>
        <dt></dt>
        <dd></dd>
    </dl>
</template>
<script>
import axios from 'axios'
export default {
    data: function (){
        return {
            employee: {}
        }
    },
    mounted () {
        axios
            .get('api/v1/employees/${this.$route.params.id}'.json)
            .then(responce => this.employee = response.data)
    }
}
</script>

<style scoped></style>