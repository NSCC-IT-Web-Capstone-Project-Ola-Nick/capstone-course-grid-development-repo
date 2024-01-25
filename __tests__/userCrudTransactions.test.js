// this test will test crud db transactions for user 
// import all the methods from the user crud transactions, these already have the prisma client
import { createUser, getUserById, getUserByEmail, getEncryptedPasswordByEmail, changeEncryptedPasswordByEmail } from "@/data/dbTransactions/user.dbTransaction";

// import the testing suite
import { describe, expect, test } from "@jest/globals";
import '@testing-library/jest-dom'

// the test data
const userData = {
    email: "user@email.com",
    password: "password",
    firstName: "firstName",
    lastName: "lastName",
    title: "title",
    organization: "organization",
}

// test the creation and retrieval of an user
describe("User CRUD Transactions", () => {
    test('Create and retrieve an user', async () => {

        // create an user
        const createdUser = await createUser(userData);

        // get the user by id
        const retrievedUser = await getUserById(createdUser.id);

        // check if the user is created
        expect(createdUser).toBeDefined();

        // check if the user is retrieved
        expect(retrievedUser).toBeDefined();
    })
})