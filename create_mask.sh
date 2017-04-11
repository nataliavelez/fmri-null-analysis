#!/bin/bash
in_template="data/nyu_rest/session1/%s/anat/mprage_skullstripped.nii"
out_template="data/nyu_rest/session1/%s/anat/skullstripped.nii"
mask_template="data/nyu_rest/session1/%s/anat/skullstripped_mask.nii"

for i in $(ls data/nyu_rest/session1); do
	echo Working on subject: $i

	in_file=`printf $in_template $i`
	out_file=`printf $out_template $i`
	mask_file=`printf $mask_template $i`

	bet $in_file $out_file -f 0 -m
	rm -f $out_file
	gunzip $mask_file
done
