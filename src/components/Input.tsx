type InputProps = {
  name: string;
  label: string;
};

export const Input = ({ name, label }: InputProps) => {
  return (
    <div className="flex flex-col space-y-2" id={name}>
      <label htmlFor={name}>{label}</label>
      <input
        name={name}
        className="rounded-md border-2 border-gray-300 p-2"
        type="text"
      />
    </div>
  );
};
