import sys
import os


def update_version_number(repo_root, filename, encoder, lines_list, old_version, new_version):
    filename = os.path.join(repo_root, filename)
    with open(filename, 'r', encoding=encoder) as file:
        lines = file.readlines()

    with open(filename, 'w', encoding=encoder) as file:
        for i, line in enumerate(lines, 1):
            if i in lines_list:
                lines[i - 1] = line.replace(old_version, new_version)
        file.writelines(lines)


def main():
    if len(sys.argv) != 4:
        print("Usage: UpdateVersionNumber.py <REPO_ROOT> <OLD_VERSION> <NEW_VERSION>")
        sys.exit(1)

    repo_root = sys.argv[1]
    old_version = sys.argv[2]
    new_version = sys.argv[3]

    update_version_number(repo_root, 'README.md', "utf-8", [9, 11, 12], old_version, new_version)
    # update_version_number(repo_root, '#README/README-cn.md', "utf-8", [3, 6], old_version, new_version)
    # update_version_number(repo_root, 'Dockerfile', "utf-8", [16], old_version, new_version)


if __name__ == "__main__":
    main()
