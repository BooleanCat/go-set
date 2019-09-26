package system_test

import (
	"testing"

	. "github.com/onsi/ginkgo"
	. "github.com/onsi/gomega"
)

func TestGoSet(t *testing.T) {
	RegisterFailHandler(Fail)
	RunSpecs(t, "GoSet Suite")
}
