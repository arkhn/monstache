package main

import (
	"errors"
	"fmt"

	"github.com/rwynn/monstache/monstachemap"
)

// Map implemtents a plugin to convert document values to uppercase
func Map(input *monstachemap.MapperPluginInput) (output *monstachemap.MapperPluginOutput, err error) {
	doc := input.Document
	resourceType, ok := doc["resourceType"].(string)
	if !ok {
		return nil, errors.New("resourceType is missing from resource document")
	}

	// remove the mongodb internal identifier
	_, ok = doc["_id"]
	if ok {
		delete(doc, "_id")
	}

	res := map[string]interface{}{
		"elastic_index": fmt.Sprintf("fhirstore.%s", resourceType),
		resourceType:    doc,
	}

	return &monstachemap.MapperPluginOutput{Document: res}, nil
}
