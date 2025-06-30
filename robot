urdf_string = """
<robot name="three_link_manipulator">
  <link name="base_link">
    <visual>
      <geometry>
        <box size="0.1 0.1 0.1"/>
      </geometry>
      <material name="red">
        <color rgba="1 0 0 1"/>
      </material>
    </visual>
    <inertial>
      <mass value="0"/>
      <inertia ixx="0" ixy="0" ixz="0" iyy="0" iyz="0" izz="0"/>
    </inertial>
  </link>

  <joint name="joint1" type="revolute">
    <parent link="base_link"/>
    <child link="link1"/>
    <origin xyz="0 0 0.1"/>
    <axis xyz="0 0 1"/>
    <limit lower="-3.14" upper="3.14" velocity="10" effort="100"/>
  </joint>

  <link name="link1">
    <visual>
      <geometry>
        <cylinder radius="0.05" length="0.5"/>
      </geometry>
      <material name="blue">
        <color rgba="0 0 1 1"/>
      </material>
    </visual>
    <inertial>
      <mass value="1"/>
      <inertia ixx="0.1" ixy="0" ixz="0" iyy="0.1" iyz="0" izz="0.01"/>
    </inertial>
  </link>

  <joint name="joint2" type="revolute">
    <parent link="link1"/>
    <child link="link2"/>
    <origin xyz="0 0 0.5"/>
    <axis xyz="0 0 1"/>
    <limit lower="-3.14" upper="3.14" velocity="10" effort="100"/>
  </joint>

  <link name="link2">
    <visual>
      <geometry>
        <cylinder radius="0.05" length="0.5"/>
      </geometry>
      <material name="green">
        <color rgba="0 1 0 1"/>
      </material>
    </visual>
    <inertial>
      <mass value="1"/>
      <inertia ixx="0.1" ixy="0" ixz="0" iyy="0.1" iyz="0" izz="0.01"/>
    </inertial>
  </link>

    <joint name="joint3" type="revolute">
    <parent link="link2"/>
    <child link="link3"/>
    <origin xyz="0 0 0.5"/>
    <axis xyz="0 0 1"/>
    <limit lower="-3.14" upper="3.14" velocity="10" effort="100"/>
  </joint>

  <link name="link3">
    <visual>
      <geometry>
        <cylinder radius="0.05" length="0.3"/>
      </geometry>
      <material name="yellow">
        <color rgba="1 1 0 1"/>
      </material>
    </visual>
    <inertial>
      <mass value="0.5"/>
      <inertia ixx="0.05" ixy="0" ixz="0" iyy="0.05" iyz="0" izz="0.005"/>
    </inertial>
  </link>

</robot>
"""
