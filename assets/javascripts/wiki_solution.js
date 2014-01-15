function wiki_solution_show_solution(n)
{
	if ( n == undefined) {
		$('.solution').show();
	} else {
		$('.solution').each(function(index,element){
			if (index<n) {
				$(element).show();
			} else {
				$(element).remove();
			}
		});
	}
}