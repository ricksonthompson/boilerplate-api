import axios from "axios";

export const coreApi = (token?: string) => axios.create({
    baseURL: process.env.CORE_API_URL
})

export const googleMapsApi = (token?: string) => axios.create({
    baseURL: process.env.CORE_API_URL
})
