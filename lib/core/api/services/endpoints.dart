const liveMode = bool.fromEnvironment("mode", defaultValue: false);
const baseUrl = liveMode ? "https://kaspa.com" : "https://kaspa.live.com";
const baseApi = "$baseUrl/api/v1/";
const baseSocket = liveMode ? "wss://kaspa.com" : "wss://kaspa.live.com";
