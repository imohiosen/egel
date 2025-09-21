import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  experimental: {
    // Disable CSS optimization that uses lightningcss for ARM builds
    optimizeCss: false,
  },
};

export default nextConfig;
