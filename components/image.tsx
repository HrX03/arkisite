import Image from "next/image";

export type ImageProps = {
  src: string;
  alt: string;
  width?: number;
  height?: number;
  sizes?: string;
  className?: string;
};
export default function ArkiImage({
  src,
  alt,
  width,
  height,
  sizes,
  className,
}: ImageProps): React.ReactElement {
  return (
    <div className={`relative ${sizes}`}>
      <Image
        src={src}
        alt={alt}
        width={width}
        height={height}
        fill={true}
        sizes={sizes}
        className={`${className}`}
      />
    </div>
  );
}
