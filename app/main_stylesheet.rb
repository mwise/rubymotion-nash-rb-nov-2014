class MainStylesheet < RubyMotionQuery::Stylesheet

  def my_view(st)
    st.background_color = color.white

    # assign the styler as a global variable
    # to demo the RubyMotion REPL
    $view_styler = st
  end

  def my_button(st)
    st.top = 20
    st.width = 44
    st.height = 44
    st.background_color = color.light_gray
  end

end
