export default function Index() {
  return (
    <div className="flex h-screen w-screen items-center justify-center bg-gray-100">
      <form className="flex flex-col space-y-4">
        <Input name="email" label="Email" />
        <Input name="password" label="Password" />
        <Input name="confirmPassword" label="Confirm Password" />
        <button type="submit">Submit</button>
      </form>
    </div>
  );
}

const Input = ({ name, label }: { name: string; label: string }) => {
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
