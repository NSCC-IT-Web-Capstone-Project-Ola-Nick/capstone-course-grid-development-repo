import { serialize } from "cookie"
// import cookie config
import { cookieConfig } from "@/utils/validation/cookies";

export default function handler(req, res) {
    if (req.method !== 'POST') {
        return res.status(405).json({ message: 'Method not allowed' })
    }

    const newCookie = serialize("foo", "bar", cookieConfig)

    res.setHeader("Set-Cookie", newCookie)

    res.status(200).json({ name: 'John Doe' })
}