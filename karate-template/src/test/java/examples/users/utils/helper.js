// LINK - Used to reference external resources or related documents for further information.
// ANCHOR - Marks specific points in code or documents for easy navigation.
// FIXME - Highlights areas of code requiring attention or fixing.
// NOTE - Provides additional information or context about the code.
// REVIEW - Requests feedback or review on specific code sections.
// SECTION - Categorizes or labels sections of code or documentation.
// TODO - Marks areas of code requiring implementation or completion in the future.
// STUB - Marks incomplete or placeholder code to be implemented later.

const Person = {
    firstName: "Madhurendra",
    lastName: "Nath Tiwari",
    getFullName: function () {
        return `My fullname is ${this.firstName} ${this.lastName}`
    }
}

const fullName = Person.getFullName()
console.log(">> ", fullName)