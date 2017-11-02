#!/bin/sh

PROJECT=some-project-name
VERSION=dev

while test $# -gt 0
do
    case $1 in
        # Expected arguments

        # project ID
        -p | --project)
            PROJECT=$2
            shift
            ;;

        # version info
        -v | --version)
            VERSION=$2
            shift
            ;;

        # TODO Add additional commands here

        # Error handlers
        --)
            echo "Missing argument for: --"
            exit 0
            ;;

        # error unknown (long) option $1
        --*)
            echo "Unknown argument: --$1"
            exit 0
            ;;

        # error unknown (short option $1
        -?)
            echo "Unknown argument: -$1"
            exit 0
            ;;

        # Wildcard
        *)
            echo "I'm so done here"
            break
            ;;
    esac

    shift
done

echo "some actual script --project $PROJECT --version $VERSION"
