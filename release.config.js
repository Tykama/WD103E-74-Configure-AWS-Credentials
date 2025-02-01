module.exports = {
   branches: ["main"],  // ✅ Corrected to an array
   plugins: [
     '@semantic-release/commit-analyzer',
     '@semantic-release/release-notes-generator',
     '@semantic-release/git',
     '@semantic-release/github',
     [
       '@semantic-release/npm',
       {
         npmPublish: false // ✅ Disables npm publishing (if not publishing a package)
       }
     ]
   ]
};
