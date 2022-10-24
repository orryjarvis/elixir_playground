defmodule HelloWorld.TodoListFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `HelloWorld.TodoList` context.
  """

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        completed: true,
        description: "some description"
      })
      |> HelloWorld.TodoList.create_task()

    task
  end
end
