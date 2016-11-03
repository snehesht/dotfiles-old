#!/usr/bin/python3

heatmap_colors = ['colour118','colour226','colour208','colour202','colour196']


def main():
    elm =u"\U0001F4BB" + " "
    for i in heatmap_colors:
        elm = elm + '#[fg=' + i + ',bg=colour015]' + u'\u2589'
    print(elm)


if __name__=="__main__":
    main()

