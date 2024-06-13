'use client';

import { useRouter} from 'next/router';
import { useState } from 'react';
import { useForm } from 'react-hook-form';
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from '../ui/form';
import * as z from 'zod';
import { zodResolver } from '@hookform/resolvers/zod';
import { Input } from '../ui/input';
import { Button } from '../ui/button';
import Link from 'next/link';

// Define the schema with studentID instead of email
const FormSchema = z.object({
  studentID: z.string().min(1, 'Student ID is required'),
  password: z
    .string()
    .min(1, 'Password is required')
    .min(4, 'Password must have 5 characters'),
});

const Login = () => {
  const router = useRouter();
  const [isLoggedIn, setIsLoggedIn] = useState(false); // Example state to track login status

  const handleLogin = () => {
    // Perform login logic (e.g., API call, validation)
    // Assume login is successful
    setIsLoggedIn(true);

    // Redirect to dashboard
    router.push('/Dashboard');
  };
}

const SignInForm = () => {
  const [showPassword, setShowPassword] = useState(false);

  const form = useForm<z.infer<typeof FormSchema>>({
    resolver: zodResolver(FormSchema),
    defaultValues: {
      studentID: '',
      password: '',
    },
  });

  const onSubmit = (values: z.infer<typeof FormSchema>) => {
    console.log(values);
  };

  return (
    <Form {...form}>
      <form onSubmit={form.handleSubmit(onSubmit)} className='w-full'>
        <div className='space-y-2'>
          <FormField
            control={form.control}
            name='studentID'
            render={({ field }) => (
              <FormItem>
                <FormLabel className='font-poppins'>Student ID</FormLabel>
                <FormControl className='mb-4'>
                  <Input className='font-poppins' placeholder='Enter your student ID' {...field} />
                </FormControl>
                <FormMessage />
              </FormItem>
            )}
          />
          <FormField
            control={form.control}
            name='password'
            render={({ field }) => (
              <FormItem>
                <FormLabel className='font-poppins'>Password</FormLabel>
                <FormControl>
                  <div className='relative'>
                    <Input
                      type='password'
                      placeholder='Enter your password'
                      {...field}
                    />
                  </div>
                </FormControl>
                <FormMessage />
              </FormItem>
            )}
          />
        </div>
        <Button className='w-full mt-6 font-poppins' type='submit'>
          Login
        </Button>
      </form>

      <p className='font-poppins text-center text-sm text-gray-800 mt-6'>
        Don&apos;t have an account? &nbsp;
        <Link className='text-blue-600 hover:underline' href='/sign-up'>
          Register Here
        </Link>
      </p>
    </Form>
  );
};

export default SignInForm;
