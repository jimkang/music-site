const rootPath = "/usr/share/nginx/html/jimkang.com/music";

module.exports = {
  name: "music",
  archiveOpts: {
    title: "Music",
    homeLink: "https://jimkang.com/music",
    rootPath,
    maxEntriesPerPage: 25,
    fileAbstractionType: "fs",
    footerHTML: `<div class="important-info">
    <a href="https://jimkang.bandcamp.com/">Bandcamp</a> |
    <a href="https://jimkang.com/music/rss/index.rss">RSS feed</a> |
    <a href="https://jimkang.com">jimkang.com</a>
    </div>
    `,
    generateRSS: true,
    archiveBaseURL: "https://jimkang.com/music",
    mediaDir: "https://smidgeo.com/notes/deathmtn/media",
    rssFeedOpts: {
      feed_url: "https://jimkang.com/music/rss/index.rss",
      site_url: "https://jimkang.com/music/",
    },
    rssPostingDelay: 1000
  },
};
