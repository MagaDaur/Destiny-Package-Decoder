// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:20 2023
Texture3D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb10 : register(b10)
{
  float4 cb10[1];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[162];
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
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t2.Load(r0.y).xyzw;
    r2.xyz = (int3)r0.yyy + int3(1,2,3);
    r3.xyzw = t2.Load(r2.x).wxyz;
    r4.xyzw = t2.Load(r2.y).xyzw;
    r2.xyzw = t2.Load(r2.z).xyzw;
    r0.y = cb10[0].x + 0.25;
    r0.y = (int)r0.y;
    r0.w = (int)cb0[23].x;
    r0.y = (int)r0.w + (int)r0.y;
    r0.w = cb0[22].x / r2.x;
    r5.xyzw = saturate(r2.yyww);
    r6.xyzw = r5.xyzw * float4(13.902051,0.202289,0.539568007,6.81818295) + float4(-1.66824603,0.797711015,0,-5.81818295);
    r7.xyz = cmp(r5.yyy >= float3(0.119999997,0.180000007,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r5.xz = r7.xy + r7.yz;
    r5.xz = float2(9.99999997e-007,9.99999997e-007) + r5.xz;
    r5.xz = float2(0.5,0.5) * r5.xz;
    r5.xz = frac(r5.xz);
    r5.xz = r5.xz * r6.xy;
    r5.xz = float2(2,2) * r5.xz;
    r5.x = r5.x + r5.z;
    r5.x = saturate(r7.z * 1 + r5.x);
    r7.xyz = cmp(r5.www >= float3(0,0.926666975,1));
    r7.xyw = r7.xyz ? float3(1,1,1) : 0;
    r7.xyz = r7.xyw + r7.yww;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r5.zw = r7.xy * r6.zw;
    r5.zw = float2(2,2) * r5.zw;
    r5.z = r5.z + r5.w;
    r5.z = r7.z * 2 + r5.z;
    r5.z = saturate(r7.w * 1 + r5.z);
    r5.z = r5.z * 0.100000009 + 0.200000003;
    r5.w = saturate(r4.x);
    r6.xy = r5.ww * float2(-6.60121918,-0.0881740004) + float2(1,0.0881740004);
    r7.xyz = cmp(r5.www >= float3(0,0.140000001,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r6.zw = r7.xy + r7.yz;
    r6.zw = float2(9.99999997e-007,9.99999997e-007) + r6.zw;
    r6.zw = float2(0.5,0.5) * r6.zw;
    r6.zw = frac(r6.zw);
    r6.xy = r6.zw * r6.xy;
    r6.xy = r6.xy + r6.xy;
    r5.w = saturate(r6.x + r6.y);
    r5.xw = float2(0.75,100) * r5.xw;
    r6.xy = r5.yy * float2(1.71468103,0.426966995) + float2(0,0.573032975);
    r7.xyz = cmp(r5.yyy >= float3(0,0.444999993,1));
    r7.xyw = r7.xyz ? float3(1,1,1) : 0;
    r7.xyz = r7.xyw + r7.yww;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r6.xy = r7.xy * r6.xy;
    r6.xy = float2(2,2) * r6.xy;
    r5.y = r6.x + r6.y;
    r5.y = r7.z * 2 + r5.y;
    r5.y = r7.w * 1 + r5.y;
    r5.y = min(1, r5.y);
    r3.x = saturate(r3.x);
    r6.xy = r3.xx * float2(-3.50532103,-0.096721001) + float2(1,0.096721001);
    r7.xyz = cmp(r3.xxx >= float3(0,0.264999986,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r6.zw = r7.xy + r7.yz;
    r6.zw = float2(9.99999997e-007,9.99999997e-007) + r6.zw;
    r6.zw = float2(0.5,0.5) * r6.zw;
    r6.zw = frac(r6.zw);
    r6.xy = r6.zw * r6.xy;
    r6.xy = r6.xy + r6.xy;
    r3.x = saturate(r6.x + r6.y);
    r5.y = r5.y * 24 + 0.899999976;
    r3.x = r3.x * r5.y + 0.100000001;
    r4.x = r4.x + r0.w;
    r6.w = r4.x * r2.x;
    r7.xyz = cb9[r0.y+0].yyy * cb0[26].xyz;
    r7.xyz = cb0[25].xyz * cb9[r0.y+0].xxx + r7.xyz;
    r7.xyz = cb0[27].xyz * cb9[r0.y+0].zzz + r7.xyz;
    r7.xyz = cb0[28].xyz + r7.xyz;
    r8.xyz = cb9[r0.y+32].zyw * float3(1,-1,1);
    r8.xyz = cb9[r0.y+32].zxy * r8.xyz;
    r9.xyz = cb9[r0.y+32].ywz * float3(-1,1,1);
    r8.xyz = cb9[r0.y+32].yzx * r9.xyz + -r8.xyz;
    r9.xyz = cb9[r0.y+32].wzy * float3(1,1,-1);
    r8.xyz = cb9[r0.y+32].www * r9.xyz + r8.xyz;
    r8.xyz = cb9[r0.y+32].xxx * cb9[r0.y+32].xyz + r8.xyz;
    r9.xyz = cb0[26].xyz * r8.yyy;
    r8.xyw = cb0[25].xyz * r8.xxx + r9.xyz;
    r8.xyz = cb0[27].xyz * r8.zzz + r8.xyw;
    r0.y = cb0[22].x * r3.x;
    r0.y = 3.14159274 * r0.y;
    sincos(r0.y, r3.x, r9.x);
    r0.y = dot(r8.xyz, r8.xyz);
    r0.y = rsqrt(r0.y);
    r8.xyz = r8.xyz * r0.yyy;
    r8.xyz = r8.xyz * r3.xxx;
    r9.yzw = -r7.xyz + r3.yzw;
    r10.xyz = r9.wyz * -r8.yzx;
    r10.xyz = r9.zwy * -r8.zxy + -r10.xyz;
    r0.y = dot(r9.yzw, -r8.xyz);
    r10.w = -r0.y;
    r11.xyz = r9.xxx * r9.yzw;
    r11.w = 0;
    r10.xyzw = r11.xyzw + r10.xyzw;
    r9.yzw = r10.yzx * r8.zxy;
    r9.yzw = r8.yzx * r10.zxy + -r9.yzw;
    r9.xyz = r9.xxx * r10.xyz + r9.yzw;
    r8.xyz = r10.www * r8.xyz + r9.xyz;
    r7.xyz = r8.xyz + r7.xyz;
    r7.xyz = r7.xyz + -r3.yzw;
    r0.y = max(cb0[22].x, 9.99999997e-007);
    r0.y = 1 / r0.y;
    r7.xyz = r7.xyz * r0.yyy;
    r7.xyz = r7.xyz * cb0[22].xxx + r1.xyz;
    r8.xyz = r3.yzw * float3(0.166666672,0.166666672,0.166666672) + float3(0.5,0.5,0.5);
    r8.xyz = t3.SampleLevel(s1_s, r8.xyz, 0).xyz;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.xyz = r8.xyz * r5.www;
    r7.xyz = r8.xyz * cb0[22].xxx + r7.xyz;
    r5.xyw = cb0[160].xyz * r5.xxx;
    r5.xyw = r5.xyw * cb0[159].xxx + r7.xyz;
    r0.y = saturate(cb0[161].x + cb0[161].x);
    r0.y = 1 + -r0.y;
    r7.yzw = r5.xyw * r0.yyy;
    r5.xyw = cb0[136].xxx * r7.yzw;
    r8.xyz = r7.yzw * cb0[136].xxx + r3.yzw;
    r0.y = cb0[161].x * r4.y;
    r4.z = r0.y * 6.28318548 + r4.z;
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r0.w = 9.99999975e-006 + r0.y;
    r9.xyz = r1.xyz / r0.www;
    r9.xyz = r9.xyz * float3(0.00999999978,0.00999999978,0.00999999978) + r3.yzw;
    r0.y = cmp(0.00100000005 < r0.y);
    r9.xyz = r0.yyy ? r9.xyz : r3.yzw;
    r0.y = dot(r7.yzw, r7.yzw);
    r0.y = sqrt(r0.y);
    r0.w = 9.99999975e-006 + r0.y;
    r10.xyz = r7.yzw / r0.www;
    r10.xyz = r10.xyz * float3(0.00999999978,0.00999999978,0.00999999978) + r8.xyz;
    r0.y = cmp(0.00100000005 < r0.y);
    r10.xyz = r0.yyy ? r10.xyz : r8.xyz;
    r11.xyz = cb12[1].xyw * r9.yyy;
    r9.xyw = cb12[0].xyw * r9.xxx + r11.xyz;
    r9.xyz = cb12[2].xyw * r9.zzz + r9.xyw;
    r9.xyz = cb12[3].xyw + r9.xyz;
    r11.xyz = cb12[1].xyw * r10.yyy;
    r10.xyw = cb12[0].xyw * r10.xxx + r11.xyz;
    r10.xyz = cb12[2].xyw * r10.zzz + r10.xyw;
    r10.xyz = cb12[3].xyw + r10.xyz;
    r0.yw = r9.xy / r9.zz;
    r0.yw = r0.yw * float2(0.5,-0.5) + float2(0.5,0.5);
    r9.xy = r10.xy / r10.zz;
    r9.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.yw = cb12[12].xy * r0.yw;
    r11.xy = (int2)r0.yw;
    r11.zw = float2(0,0);
    r0.y = t1.Load(r11.xyw).x;
    r0.y = r0.y * cb0[0].y + cb0[0].x;
    r0.y = 1 / r0.y;
    r9.xy = cb12[12].xy * r9.xy;
    r12.xy = (int2)r9.xy;
    r12.zw = float2(0,0);
    r0.w = t1.Load(r12.xyw).x;
    r0.w = r0.w * cb0[0].y + cb0[0].x;
    r0.w = 1 / r0.w;
    r9.xyw = t0.Load(r11.xyz).xyz;
    r9.xyw = r9.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r3.x = dot(r9.xyw, r9.xyw);
    r3.x = rsqrt(r3.x);
    r9.xyw = r9.xyw * r3.xxx;
    r10.xyw = t0.Load(r12.xyz).xyz;
    r10.xyw = r10.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r3.x = dot(r10.xyw, r10.xyw);
    r3.x = rsqrt(r3.x);
    r10.xyw = r10.xyw * r3.xxx;
    r3.x = r0.y + -r0.w;
    r8.w = dot(r9.xyw, r10.xyw);
    r8.w = 1 + -r8.w;
    r0.y = r0.y + -r9.z;
    r0.w = r0.w + -r10.z;
    r9.x = r0.y * r0.w;
    r9.x = cmp(r9.x < 0);
    r3.x = cmp(abs(r3.x) < 2.5);
    r3.x = r3.x ? r9.x : 0;
    r8.w = cmp(r8.w < 0.600000024);
    r3.x = r3.x ? r8.w : 0;
    r8.w = abs(r0.y) + abs(r0.w);
    r0.y = abs(r0.y) / r8.w;
    r7.x = cb0[22].x + r1.w;
    r1.w = dot(r10.xyw, r7.yzw);
    r8.w = r1.w + r1.w;
    r9.xyz = -r8.www * r10.xyw + r7.yzw;
    r9.yzw = r9.xyz * r5.zzz;
    r5.xyz = r0.yyy * r5.xyw + r3.yzw;
    r0.y = 1 + -r0.y;
    r11.xyz = r9.yzw * r0.yyy;
    r5.xyz = r11.xyz * cb0[22].xxx + r5.xyz;
    r5.xyz = r3.xxx ? r5.xyz : r8.xyz;
    r9.x = 0;
    r8.xyzw = r3.xxxx ? r9.yzwx : r7.yzwx;
    r0.y = cmp(abs(r0.w) < 0.100000001);
    r9.xyz = -r1.www * r10.xyw + r7.yzw;
    r3.x = dot(r9.xyz, r9.xyz);
    r3.x = rsqrt(r3.x);
    r9.xyz = r9.xyz * r3.xxx;
    r3.x = dot(r9.xyz, r7.yzw);
    r5.w = 0.75 * r3.x;
    r1.w = cmp(abs(r1.w) < 0.200000003);
    r1.w = r0.y ? r1.w : 0;
    r3.x = cmp(r3.x < 0.0666666701);
    r0.y = r0.y ? r3.x : 0;
    r3.x = r0.y ? 9.99999975e-005 : r5.w;
    r7.xyz = r9.xyz * r3.xxx;
    r7.xyz = r1.www ? r7.xyz : r8.xyz;
    r9.xyz = cb12[7].xyz + -r5.xyz;
    r3.x = dot(r9.xyz, r9.xyz);
    r3.x = rsqrt(r3.x);
    r9.xyz = r9.xyz * r3.xxx;
    r0.w = 0.00999999978 + -r0.w;
    r9.xyz = r9.xyz * r0.www + r3.yzw;
    r9.xyz = r7.xyz * cb0[22].xxx + r9.xyz;
    r5.xyz = r1.www ? r9.xyz : r5.xyz;
    r0.y = r1.w ? r0.y : 0;
    r6.xyz = r0.yyy ? r3.yzw : r5.xyz;
    r8.xyz = r0.yyy ? r1.xyz : r7.xyz;
    r0.x = (int)r0.z + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r8.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}