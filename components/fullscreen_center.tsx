export default function FullscreenCenter({
  children,
}: {
  children?: React.ReactElement | React.ReactElement[] | undefined;
}) {
  return (
    <div className="flex justify-center items-start h-screen flex-col px-8">
      {children}
    </div>
  );
}
