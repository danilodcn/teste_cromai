from unittest import TestCase

from app import app


class TestProgram(TestCase):
    def test_if_exist_function_in_app_package(self):
        self.assertIn("program", dir(app), "no such function named 'program'")

    def test_if_object_program_is_callable(self):
        self.assertTrue(callable(app.program))

    def test_if_function_receive_two_arguments(self):
        # import ipdb; ipdb.set_trace()
        self.assertEqual(
            app.program.__code__.co_argcount,
            2,
            "number of function arguments is not equal to 2",
        )
