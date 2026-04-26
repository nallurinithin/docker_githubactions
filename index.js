import express from 'express'

const app = express() 
// we are fetching the port of the app that is running in the container from .env  file if it doesn't exists use default port 8008
const PORT = process.env.PORT ?? 8080

app.get('/',(req,res)=>{
    return res.json({msg:
        'Hello from the server from docker_githubactions!'
    })
})

app.listen(PORT,()=>{
    console.log(`Server is up and running on PORT ${PORT}`)
})