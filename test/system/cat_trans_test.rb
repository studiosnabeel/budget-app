require 'application_system_test_case'

class CatTransTest < ApplicationSystemTestCase
  setup do
    @cat_tran = cat_trans(:one)
  end

  test 'visiting the index' do
    visit cat_trans_url
    assert_selector 'h1', text: 'Cat trans'
  end

  test 'should create cat tran' do
    visit cat_trans_url
    click_on 'New cat tran'

    click_on 'Create Cat tran'

    assert_text 'Cat tran was successfully created'
    click_on 'Back'
  end

  test 'should update Cat tran' do
    visit cat_tran_url(@cat_tran)
    click_on 'Edit this cat tran', match: :first

    click_on 'Update Cat tran'

    assert_text 'Cat tran was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Cat tran' do
    visit cat_tran_url(@cat_tran)
    click_on 'Destroy this cat tran', match: :first

    assert_text 'Cat tran was successfully destroyed'
  end
end
