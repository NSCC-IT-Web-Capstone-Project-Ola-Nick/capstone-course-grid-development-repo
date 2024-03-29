import { serialize } from "cookie";
import { cookieConfig } from "@/utils/validation/cookies";

export default function handler(req, res) {
    if (req.method !== 'POST') {
        return res.status(405).json({ message: 'Method not allowed' })
    }

    // we need to update cookie to expire
    const newCookieConfig = cookieConfig;
    // newCookieConfig.maxAge = 0;

    const newCookie = [
        serialize("accessToken", "", newCookieConfig),
        serialize("refreshToken", "", newCookieConfig),
    ]

    res.setHeader("Set-Cookie", newCookie)

    res.status(200).json({ success: true, message: 'Logout successful' })
}