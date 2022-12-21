import tkinter as tk
from tkinter import ttk


root = tk.Tk()
root.title("Incremental Reader")
tabControl = ttk.Notebook(root)

tab1 = ttk.Frame(tabControl)
tab2 = ttk.Frame(tabControl)

tabControl.add(tab1, text='Flashcards')
tabControl.add(tab2, text='Study')
tabControl.pack(expand=1, fill="both")

ttk.Label(tab1, text="This should show all of the flashcards you have made.").grid(column=0, row=0, padx=30, pady=30)
ttk.Label(tab2, text="This should show the flashcard currently being studied").grid(column=0, row=0, padx=30, pady=30)

root.mainloop()
