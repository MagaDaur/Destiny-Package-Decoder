// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:42 2023
Buffer<float4> t0 : register(t0);

cbuffer cb10 : register(b10)
{
  float4 cb10[1];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[188];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = (uint)cb0[90].x;
    r0.y = mad(6, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r2.xyzw = t0.Load(r1.x).xyzw;
    r3.xyzw = t0.Load(r1.y).xyzw;
    r4.xyzw = t0.Load(r1.z).xyzw;
    r1.xyz = t0.Load(r0.y).xyz;
    r5.xyzw = t0.Load(r1.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.xyz = t0.Load(r0.y).xyz;
    r0.y = cb0[22].x / r4.y;
    r0.z = cb10[0].x + 0.25;
    r0.z = (int)r0.z;
    r0.w = saturate(r5.z);
    r7.xyz = float3(1,0,0) * r0.www;
    r0.w = saturate(cb0[2].z);
    r8.xy = r0.ww * float2(-1.01276505,-2.799999) + float2(2.81276393,1);
    r0.w = r0.w * r0.w;
    r0.w = saturate(r8.x * r0.w + r8.y);
    r7.xyz = r7.xyz * r0.www;
    r8.xyzw = -cb9[r0.z+32].zxyx * r7.zzxx;
    r9.xyz = -r7.zxz * -cb9[r0.z+32].yzx + r8.xyz;
    r9.w = -r8.w;
    r7.xyz = cb9[r0.z+32].www * r7.xyz;
    r7.w = 0;
    r7.xyzw = r9.xyzw + r7.xyzw;
    r8.xyz = cb9[r0.z+32].zxy * r7.yzx;
    r8.xyz = cb9[r0.z+32].yzx * r7.zxy + -r8.xyz;
    r7.xyz = cb9[r0.z+32].www * r7.xyz + r8.xyz;
    r7.xyz = r7.www * cb9[r0.z+32].xyz + r7.xyz;
    r7.xyz = cb9[r0.z+0].xyz + r7.xyz;
    r0.w = saturate(r6.x);
    r0.w = r0.w * 2 + 3;
    r8.w = r2.w + r0.y;
    r9.w = r8.w * r4.y;
    r10.xyz = cb9[r0.z+32].zyw * float3(1,-1,1);
    r10.xyz = cb9[r0.z+32].zxy * r10.xyz;
    r11.xyz = cb9[r0.z+32].ywz * float3(-1,1,1);
    r10.xyz = cb9[r0.z+32].yzx * r11.xyz + -r10.xyz;
    r11.xyz = cb9[r0.z+32].wzy * float3(1,1,-1);
    r10.xyz = cb9[r0.z+32].www * r11.xyz + r10.xyz;
    r10.xyz = cb9[r0.z+32].xxx * cb9[r0.z+32].xyz + r10.xyz;
    r11.xyz = cb0[26].zxy * r10.yyy;
    r10.xyw = cb0[25].zxy * r10.xxx + r11.xyz;
    r10.xyz = cb0[27].zxy * r10.zzz + r10.xyw;
    r11.xyz = cb0[26].yzx * r7.yyy;
    r7.xyw = cb0[25].yzx * r7.xxx + r11.xyz;
    r7.xyz = cb0[27].yzx * r7.zzz + r7.xyw;
    r7.xyz = cb0[28].yzx + r7.xyz;
    r7.xyz = -r7.xyz + r2.yzx;
    r0.y = dot(r7.xyz, r7.xyz);
    r0.y = sqrt(r0.y);
    r0.y = -cb0[3].w + r0.y;
    r11.xy = cb0[22].xx * float2(30,20);
    r0.z = dot(-r7.xyz, -r7.xyz);
    r0.z = rsqrt(r0.z);
    r12.xyz = -r7.zxy * r0.zzz;
    r11.xzw = r12.xyz * r11.xxx;
    r0.z = cmp(0 < r0.y);
    r0.y = cmp(r0.y < 0);
    r0.y = (int)-r0.z + (int)r0.y;
    r0.y = (int)r0.y;
    r12.xyz = r10.xyz * r7.xyz;
    r7.xyz = r10.zxy * r7.yzx + -r12.xyz;
    r0.z = dot(r7.xyz, r7.xyz);
    r0.z = rsqrt(r0.z);
    r7.xyz = r7.xyz * r0.zzz;
    r7.xyz = r7.xyz * r11.yyy;
    r7.xyz = r11.xzw * r0.yyy + r7.xyz;
    r1.xyz = r7.xyz + r1.xyz;
    r0.y = saturate(cb0[187].x + cb0[187].x);
    r0.y = 1 + -r0.y;
    r9.xyz = r1.xyz * r0.yyy;
    r8.xyz = r9.xyz * cb0[170].xxx + r2.xyz;
    r0.y = saturate(cb0[187].x * r0.w);
    r0.y = 1 + -r0.y;
    r3.z = r3.z * r0.y;
    r0.y = cb0[187].x * r3.z;
    r3.w = r0.y * 6.28318548 + r3.w;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r9.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r8.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r5.xyzw
    r0.y = (int)r0.x + 5;
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
  }
  return;
}