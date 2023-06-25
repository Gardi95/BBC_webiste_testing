
*** Variables ***

${browser}  chrome
${url}  https://account.bbc.com/register?action=sign-in&clientId=Account&context=international&isCasso=false&nonce=oQji7CRN-1XGwMhviaX77txUEVXJd6xTb3ks&ptrt=https%3A%2F%2Fwww.bbc.com%2F&realm=%2F&redirectUri=https%3A%2F%2Fsession.bbc.com%2Fsession%2Fcallback%3Frealm%3D%2F&service=IdSignInService&userOrigin=HOMEPAGE_GNL
${messageInvalidDateofbirth}  //*[@id="container"]/div/div[2]/div/div/h1
${messageInvalidDate_birth}  //*[@id="form-message-dateOfBirth"]/p
${RegisterwiththeBBC}  //*[@id="container"]/div/div[2]/div/div/h1
${Something'smissing}  //*[@id="form-message-email"]/p