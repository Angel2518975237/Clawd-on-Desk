const { contextBridge, ipcRenderer } = require("electron");

contextBridge.exposeInMainWorld("speechAPI", {
  onUpdate: (cb) => ipcRenderer.on("speech-update", (_, data) => cb(data)),
  onHide: (cb) => ipcRenderer.on("speech-hide", () => cb()),
});
