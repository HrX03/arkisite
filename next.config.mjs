/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  async redirects() {
    return [
      {
        source: '/gdc/aicontest',
        destination: '/gdc/contest/aicontest',
        permanent: true,
      },
      {
        source: '/gdc/dscontest',
        destination: '/gdc/contest/dscontest',
        permanent: true,
      },
    ]
  }
};

export default nextConfig;
