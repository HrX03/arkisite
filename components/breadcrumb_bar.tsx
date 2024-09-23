type BreadcrumbBarProps = {
  path: string[];
};

export default function BreadcrumbBar({ path }: BreadcrumbBarProps) {
  let lastPath = "";
  const paths = [];
  for (const segment of path) {
    lastPath += segment + "/";
    paths.push({ name: segment, path: lastPath });
  }
  return (
    <div className="flex flex-row gap-2">
      {paths.map((v) => (
        <a href={`/${v.path}`}>{v.name}</a>
      ))}
    </div>
  );
}
