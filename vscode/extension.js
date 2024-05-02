const vscode = require('vscode');

function hello() {
  vscode.window.showInformationMessage('hello');
}

async function activate(context) {
  console.log(activate, context);
  vscode.window.showInformationMessage(activate);
  let disposable = vscode.commands.registerCommand('slon.hello', hello);
  context.subscriptions.push(disposable);
}

function deactivate() {
  console.log(deactivate);
  vscode.window.showInformationMessage(deactivate);
}

module.exports = {
  activate,
  deactivate
}
