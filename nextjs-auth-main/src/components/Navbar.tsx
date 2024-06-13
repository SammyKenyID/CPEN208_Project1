import Link from 'next/link';
import { buttonVariants } from './ui/button';


const Navbar = () => {
  return (
    <div className='bg-blue-100 py-2 border-b border-s-zinc-500 fixed w-full z-10 top-0 container flex'>
      <div className='container flex items-center'>
        <div className="container flex items-center mr-28">
          <Link className='mr-4' href='/home'>
              Home
          </Link>
          <Link className='mr-4' href='/Dashboard'>
              Dashboard
          </Link>
          <Link className='mr-4' href='/sign-in'>
            Login
          </Link>
          <Link href='/sign-up'>
            Register
          </Link>
        </div>
      </div>
    </div>
  );
};

export default Navbar;
